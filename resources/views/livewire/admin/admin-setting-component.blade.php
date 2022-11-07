<div>
    <div class="container" style="padding: 30px 0">
       <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Pengaturan
                    </div>
                    <div class="panel-body">
                        @if(Session::has('message'))
                            <div class="alert alert-success" role="alert">{{Session::get('message')}}</div>
                        @endif
                        <form class="form-horizontal" wire:submit.prevent="saveSettings">
                            <div class="form-group">
                                <label class="col-md-4 control-label">Email</label>
                                <div class="col-md-4">
                                    <input type="email" placeholder="Email" class="form-control input-md" wire:model="email" />                                    
                                    @error('email') <p class="text-danger">{{$message}}</p> @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Phone</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Phone" class="form-control input-md" wire:model="phone" />   
                                    @error('phone') <p class="text-danger">{{$message}}</p> @enderror                                 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Address</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Address" class="form-control input-md" wire:model="address" /> 
                                    @error('address') <p class="text-danger">{{$message}}</p> @enderror                                   
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Facebook</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Facebook" class="form-control input-md" wire:model="facebook" />  
                                    @error('facebook') <p class="text-danger">{{$message}}</p> @enderror                                  
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Instagram</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Instagram" class="form-control input-md" wire:model="instagram" />  
                                    @error('instagram') <p class="text-danger">{{$message}}</p> @enderror                                  
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Whatsapp</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Whatsapp" class="form-control input-md" wire:model="whatsapp" />  
                                    @error('whatsapp') <p class="text-danger">{{$message}}</p> @enderror                                  
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label"></label>
                                <div class="col-md-4">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div> 
    </div>
</div>