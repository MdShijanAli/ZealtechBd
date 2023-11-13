<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use App\Models\Subscriber;
use Illuminate\Http\Request;

class ContactUsController extends Controller
{
    // index
    public function contact()
    {
        return view('pages.contact');
    }

    // contact store
    public function contactStore(Request $request)
    {
        $request->validate([
            'name' => 'required|string|min:3',
            'email' => 'required|email|unique:contacts',
            'phone' => 'required',
        ]);

        $contact = new Contact();
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->subject = $request->subject;
        $contact->phone = $request->phone;
        $contact->message = $request->message;
        $contact->save();
        if($contact) {
            return back();
        }
        return redirect()->back()->withInput();
    }

    // contact list
    public function contactList()
    {
        $contacts = Contact::latest()->get();
        $contact = Contact::first();
        return view('adminpages.contact.list', compact('contacts', 'contact'));
    }

    public function getContactById($id)
    {
        return Contact::find($id);
    }

    public function destroy(Contact $contact)
    {
        $contact->delete();
        return redirect()->back();
    }

    // subscriber
    public function subscriberList()
    {
        $subscribers = Subscriber::latest()->get();
        return view('adminpages.contact.subscribe', compact('subscribers'));
    }

    public function subscriberStore(Request $request)
    {
        $request->validate([
            'email' => 'required|email|unique:subscribers'
        ]);

        $subscribe = new Subscriber();
        $subscribe->email = $request->email;
        $subscribe->save();
        if($subscribe){
            return back();
        }
        return redirect()->back()->withInput();
    }

    public function subscriberDestroy(Subscriber $subscriber)
    {
        $subscriber->delete();
        return back();
    }

}
