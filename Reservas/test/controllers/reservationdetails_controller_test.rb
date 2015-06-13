require 'test_helper'

class ReservationdetailsControllerTest < ActionController::TestCase
  setup do
    @reservationdetail = reservationdetails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservationdetails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reservationdetail" do
    assert_difference('Reservationdetail.count') do
      post :create, reservationdetail: { course_id: @reservationdetail.course_id, entree_id: @reservationdetail.entree_id, quantitycourse: @reservationdetail.quantitycourse, quantityentree: @reservationdetail.quantityentree, reservation_id: @reservationdetail.reservation_id }
    end

    assert_redirected_to reservationdetail_path(assigns(:reservationdetail))
  end

  test "should show reservationdetail" do
    get :show, id: @reservationdetail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reservationdetail
    assert_response :success
  end

  test "should update reservationdetail" do
    patch :update, id: @reservationdetail, reservationdetail: { course_id: @reservationdetail.course_id, entree_id: @reservationdetail.entree_id, quantitycourse: @reservationdetail.quantitycourse, quantityentree: @reservationdetail.quantityentree, reservation_id: @reservationdetail.reservation_id }
    assert_redirected_to reservationdetail_path(assigns(:reservationdetail))
  end

  test "should destroy reservationdetail" do
    assert_difference('Reservationdetail.count', -1) do
      delete :destroy, id: @reservationdetail
    end

    assert_redirected_to reservationdetails_path
  end
end
