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
                {{-- <input type="text" name="name" class="form-control" id="firstName" placeholder="" value="" required> --}}
                <div class="invalid-feedback">
                    يرجى إدخال اسم الوحدة صحيح.
                </div>
            </div>
            <div class="col-sm-2">
                <a class="btn btn-primary" href="{{route('customers.create')}}"> عميل جديد</a>
            </div>

            @foreach ($rooms as $key => $room)
            <div class="row mt-5">
              <div class='col-md-3 col-xs-3'>
                <p>{{$room->name}}</p>
              
              </div>
              <div class="col-md-9 col-xs-9">
                <table class="table table-bordered">
                  <tr>
                    <td>البند</td>
                    <td>الحالة</td>
                    <td>ملاحظات</td>
                    <td>صور</td>
                  </tr>
                    @foreach ($pRoom as $item)
                  <tr>
                      <td>
                          <input type="hidden" name="property_id[]" value="{{$property_id}}">
                          <input type="hidden" name="room_id[]" value="{{$room->id}}">
                          <input type="hidden" name="name[]" value="{{$room->name}}">
                          <input type="hidden" name="title[]" value="{{$item}}">
                                {{$item}}
                      </td>
                     
                      <td>
                        <select name="statuse[]" id="">
                          <option value="ممتاز">ممتاز</option>
                          <option value="غير مقبول">غير مقبول</option>
                        </select>
                      </td>
                      <td>
                        <textarea name="note[]" id="" rows="2"></textarea>
                      </td>
                      <td>
                        <input type="file" name="images[]" id="inputImage" multiple>
                      </td>
                    </tr>
                    @endforeach
              </table>
              </div>
            </div>
            @endforeach
            
          <hr class="mt-4">

        <button class="w-100 btn btn-primary btn-lg" type="submit">{{$submitText}}</button>
    </div>
</div>