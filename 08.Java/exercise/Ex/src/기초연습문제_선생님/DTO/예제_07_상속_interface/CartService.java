package 기초연습문제_선생님.DTO.예제_07_상속_interface;

public interface CartService {
	public void addCart(String cartItemDto, String email);

	public void getCartList(String email);

	public void validateCartItem(Long cartItemId, String email);

	public void updateCartItemCount(Long cartItemId, int count);

	public void deleteCartItem(Long cartItemId);

	public void orderCartItem(String cartOrderDtoList, String email);

}
