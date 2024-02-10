@csrf
   
@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

@if (Session::has('success'))
    <div class="alert alert-success text-center">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
        <p>{{ Session::get('success') }}</p>
    </div>
@endif

<div class="py-5 text-center">
    <img class="d-block mx-auto mb-4" src="/docs/5.3/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
    <h2>نموذج إدخال الوحدة</h2>
    <p class="lead"> الرجاء ادخال بيانات الوحدة كاملة مع رفع المخطط ليتمكن فريقك بخدمة عملائك بشكل ممتاز </p>
</div>

<div class="row g-3">
    <div class="col-md-5 col-lg-4 order-md-last">
      <h4 class="d-flex justify-content-between align-items-center mb-3">
        
        <span class="text-body-secondary">صور الوحدة و المخطط</span>
      </h4>
      <div class="mb-3">
        <input 
        
        type="file" 
        name="images[]" 
        id="inputImage"
        multiple 
        class="form-control @error('images') is-invalid @enderror">

        @error('images')
            <span class="text-danger">{{ $message }}</span>
        @enderror

      </div>

    </div>
    <div class="col-md-7 col-lg-8">
      <h4 class="mb-3">بيانات الوحدة</h4>
        <div class="row g-3">

            <div class="col-sm-12">
                <label for="Name" class="form-label">اسم الوحدة</label>
                <input type="text" name="name" class="form-control" id="firstName" placeholder="" value="" required>
                <div class="invalid-feedback">
                    يرجى إدخال اسم الوحدة صحيح.
                </div>
            </div>

            <div class="col-sm-12">
                <label for="description" class="form-label">الوصف العام </label>
                <textarea name ="description" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                <div class="invalid-feedback">
                    يرجى إدخال الوصف صحيح.
                </div>
            </div>

                {{-- تفاصيل الوحدة --}}
            <div class="col-md-2">
                <label for="country" class="form-label">غروف نوم</label>
                <input type="text" name="rooms" class="form-control" id="badroom" placeholder="" value="" required>
            </div>

            <div class="col-md-2">
                <label for="state" class="form-label">حمام</label>
                <input type="text" name="bathroom" class="form-control" id="badroom" placeholder="" value="" required>
                <div class="invalid-feedback">
                يرجى اختيار اسم منطقة صحيح.
                </div>
            </div>

            <div class="col-md-2">
                <label for="zip" class="form-label"> صالة</label>
                <input type="text" name="lounge" class="form-control" id="zip" placeholder="" required>
                <div class="invalid-feedback">
                    الرمز البريدي مطلوب.
                </div>
            </div>

            {{-- تفاصيل الوحدة --}}
            <div class="col-md-2">
                <label for="country" class="form-label">ممر</label>
                <input type="text" name="corridor" class="form-control" id="badroom" placeholder="" value="" required>
            </div>

            <div class="col-md-2">
                <label for="state" class="form-label">سور جانبي</label>
                <input type="text" class="form-control" id="badroom" placeholder="" value="" required>
                <div class="invalid-feedback">
                يرجى اختيار اسم منطقة صحيح.
                </div>
            </div>

            <div class="col-md-2">
                <label for="zip" class="form-label"> سطح</label>
                <input type="text" name="roof" class="form-control" placeholder="" required>
                <div class="invalid-feedback">
                    الرمز البريدي مطلوب.
                </div>
            </div>
          <hr class="mt-4">
          <table class="table table-bordered" id="dynamicTable">
                <tr>
                    <th>الإسم</th>
                    <th>الوصف</th>
                    <th>الحالة</th>
                </tr>
                <tr>  
                    <td><input type="text" name="addmore[0][name]" placeholder="اسم الغرفة" class="form-control" /></td>  
                    <td><input type="text" name="addmore[0][description]" placeholder=" وصف الغرفة" class="form-control" /></td>  
                    <td><button type="button" name="add" id="add" class="btn btn-success">إضافة المزيد</button></td>  
                </tr>  
            </table> 

        <button class="w-100 btn btn-primary btn-lg" type="submit">{{$submitText}}</button>
    </div>
</div>