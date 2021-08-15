<!-- Id Franchise -->
<div class="form-group row col-6">
  {!! Form::label('id', 'Id:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $franchise->id !!}</p>
  </div>
</div>

<!-- Name Franchise -->
<div class="form-group row col-6">
  {!! Form::label('name', 'Name:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $franchise->name !!}</p>
  </div>
</div>

<!-- Description Franchise -->
<div class="form-group row col-6">
  {!! Form::label('description', 'Description:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $franchise->description !!}</p>
  </div>
</div>

<!-- Image Franchise -->
<div class="form-group row col-6">
  {!! Form::label('image', 'Image:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $franchise->image !!}</p>
  </div>
</div>

<!-- Stores Franchise -->
<div class="form-group row col-6">
  {!! Form::label('stores', 'Stores:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $franchise->stores !!}</p>
  </div>
</div>

<!-- Created At Franchise -->
<div class="form-group row col-6">
  {!! Form::label('created_at', 'Created At:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $franchise->created_at !!}</p>
  </div>
</div>

<!-- Updated At Franchise -->
<div class="form-group row col-6">
  {!! Form::label('updated_at', 'Updated At:', ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <p>{!! $franchise->updated_at !!}</p>
  </div>
</div>

