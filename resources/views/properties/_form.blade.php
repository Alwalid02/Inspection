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
                <label for="country" class="form-label">غرفة النوم</label>
                <input type="text" name="غرفة النوم" class="form-control" id="badroom" placeholder="" value="" required>
            </div>

            <div class="col-md-2">
                <label for="state" class="form-label">الحمام</label>
                <input type="text" name="الحمام" class="form-control" id="badroom" placeholder="" value="" required>
            </div>

            <div class="col-md-2">
                <label for="zip" class="form-label"> غرفة المعيشة</label>
                <input type="text" name="غرفة المعيشة" class="form-control" id="zip" placeholder="" required>
            </div>

            <div class="col-md-2">
                <label for="zip" class="form-label"> المجلس</label>
                <input type="text" name="المجلس" class="form-control" id="zip" placeholder="" required>
            </div>

            <div class="col-md-2">
                <label for="zip" class="form-label"> المطبخ</label>
                <input type="text" name="المطبخ" class="form-control" id="zip" placeholder="" required>
            </div>

            <div class="col-md-2">
                <label for="country" class="form-label">المدخل</label>
                <input type="text" name="المدخل" class="form-control" id="المدخل" placeholder="" value="" required>
            </div>

            <div class="col-md-2">
                <label for="state" class="form-label">فناء المنزل </label>
                <input type="text" name="فناء المنزل" class="form-control" id="فناء المنزل" placeholder="" value="" required>
            </div>

            <div class="col-md-2">
                <label for="state" class="form-label">المساحة الخارجية</label>
                <input type="text" name="المساحة الخارجية" class="form-control" id="المساحة الخارجية" placeholder="" value="" required>
            </div>

            <div class="col-md-2">
                <label for="zip" class="form-label">السطح</label>
                <input type="text" name="السطح" class="form-control" placeholder="" required>
            </div>
          <hr class="mt-4">

        <button class="w-100 btn btn-primary btn-lg" type="submit">{{$submitText}}</button>
    </div>
</div>