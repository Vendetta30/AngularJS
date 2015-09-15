<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog" ng-controller="Login123Controller">
        <form class="form-horizontal" role="form" name="loginForm"
              ng-submit="login()">
            <div class="modal-content">
                <div class="modal-header">
                    <label class="control-label">Enter Your Credentials</label>
                    <div ng-show="error" class="alert alert-danger">{{errors}}</div>
                </div>
                <div class="modal-body">

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Username:</label>

                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="username"
                                   placeholder="Enter EmailID" ng-model="credentials.uname" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="pwd">Password:</label>

                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="pwd"
                                   placeholder="Enter password" ng-model="credentials.pwd" required>
                        </div>
                    </div>
                </div>

                <div class="modal-footer">
                    <div class="form-group">
                        <div class="col-sm-4">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>

                        <div class="col-sm-2">&nbsp;</div>

                        <div class="col-sm-4">
                            <button type="cancel" class="btn btn-primary" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>