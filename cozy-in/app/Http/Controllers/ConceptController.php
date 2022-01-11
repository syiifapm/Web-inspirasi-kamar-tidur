<?php

namespace App\Http\Controllers;

use App\Models\Concept;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreConceptRequest;
use App\Http\Requests\UpdateConceptRequest;

class ConceptController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('backend.index', [
            'concepts' => Concept::latest()->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreConceptRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $image =  $request->file('image')->store('post-image');

        Concept::create([
            'name' => $request->name,
            'desc' => $request->desc,
            'image' => $image
        ]);

        return redirect('/dashboard/concept/create')->with('success-create', 'Concept created successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Concept  $concept
     * @return \Illuminate\Http\Response
     */
    public function show(Concept $concept)
    {
        // 
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Concept  $concept
     * @return \Illuminate\Http\Response
     */
    public function edit(Concept $concept)
    {
        return view('backend.edit', [
            'concept' => $concept
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateConceptRequest  $request
     * @param  \App\Models\Concept  $concept
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if($request->file('image')){
            $image =  $request->file('image')->store('post-image');
            Concept::where('id', $id)->update([
                'name' => $request->name,
                'desc' => $request->desc,
                'image' => $image
            ]);

            return redirect('/dashboard/concept')->with('success-edit', 'Concept edited successfully');
        }else{
            Concept::where('id', $id)->update([
                'name' => $request->name,
                'desc' => $request->desc
            ]);

            return redirect('/dashboard/concept')->with('success-edit', 'Concept edited successfully');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Concept  $concept
     * @return \Illuminate\Http\Response
     */
    public function destroy(Concept $concept)
    {
        Concept::destroy($concept->id);

        return redirect('/dashboard/concept')->with('success-delete', 'Concept deleted successfully');
    }
}
