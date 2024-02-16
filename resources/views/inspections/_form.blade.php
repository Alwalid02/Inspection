@csrf

<div class="py-5 text-center">
    <img class="d-block mx-auto mb-4" src="/docs/5.3/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
    <h2>نموذج إدخال الوحدة</h2>
    <p class="lead"> الرجاء ادخال بيانات الوحدة كاملة مع رفع المخطط ليتمكن فريقك بخدمة عملائك بشكل ممتاز </p>
</div>

    

<div class="row g-3 ">
    
    <div class="col-md-12 col-lg-12">
      <h4 class="mb-3">بيانات العميل</h4>
        <div class="row g-3">
            
            <div class="col-sm-8">
                {{-- <label for="Name" class="form-label">اسم الوحدة</label> --}}
                <input type="text" name="name" class="form-control" id="firstName" placeholder="" value="" required>
                <div class="invalid-feedback">
                    يرجى إدخال اسم الوحدة صحيح.
                </div>
            </div>
            <div class="col-sm-4">
                <a class="btn btn-primary" href="{{route('customers.create')}}"> عميل جديد</a>
            </div>
            <table class="table table-bordered">
              @foreach ($rooms as $key => $room)
                <tr>
                  <td rowspan="6">{{$room->name}}</td>
                  <td>
                    
                  </td>
                  <td>B1</td>
                  <td>B1</td>
                </tr>
                <tr>
                  <td>B2</td>
                  <td>B2</td>
                  <td>B2</td>
                </tr>
                <tr>
                  <td>B2</td>
                  <td>B2</td>
                  <td>B2</td>
                </tr> 
                <tr>
                  <td>B2</td>
                  <td>B2</td>
                  <td>B2</td>
                </tr> 
                <tr>
                  <td>B2</td>
                  <td>B2</td>
                  <td>B2</td>
                </tr> 
                <tr>
                  <td>B2</td>
                  <td>B2</td>
                  <td>B2</td>
                </tr> 
                @endforeach
          </table>
          <hr class="mt-4">

        <button class="w-100 btn btn-primary btn-lg" type="submit">{{$submitText}}</button>
    </div>
</div>