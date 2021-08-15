<div class='btn-group btn-group-sm'>
    @if(in_array($id,$myReviews))
        @can('storeReviews.show')
            <a data-toggle="tooltip" data-placement="bottom" title="{{trans('lang.view_details')}}" href="{{ route('storeReviews.show', $id) }}" class='btn btn-link'>
                <i class="fa fa-eye"></i> </a>
        @endcan

        @can('storeReviews.edit')
            <a data-toggle="tooltip" data-placement="bottom" title="{{trans('lang.store_review_edit')}}" href="{{ route('storeReviews.edit', $id) }}" class='btn btn-link'>
                <i class="fa fa-edit"></i> </a>
        @endcan

        @can('storeReviews.destroy')
            {!! Form::open(['route' => ['storeReviews.destroy', $id], 'method' => 'delete']) !!}
            {!! Form::button('<i class="fa fa-trash"></i>', [
            'type' => 'submit',
            'class' => 'btn btn-link text-danger',
            'onclick' => "return confirm('Are you sure?')"
            ]) !!}
            {!! Form::close() !!}
        @endcan
    @endif
</div>
