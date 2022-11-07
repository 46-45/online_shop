<div>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                Edit Role User
                            </div>                            
                        </div>
                    </div>
                    <div class="panel-body">
                        @if(Session::has('message'))
                            <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                        @endif
                        <form class="form-horizontal" action="{{route('owner.editData', ['user_id'=>$this->id_user])}}" method ="POST">
                            @csrf
                            <div class="form-group">
                                <label class="col-md-4 control-label">Role Baru</label>
                                <input type="hidden" placeholder="Role Baru" class="form-control input-md"  wire:model="id_user"name="id"/>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Role Baru" class="form-control input-md"  wire:model="utype" name="role"/>
                                    @error('utype') <p class="text-danger">{{$message}}</p> @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label"></label>
                                <div class="col-md-4">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
