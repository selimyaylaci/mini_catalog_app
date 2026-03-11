import '../../../../core/_core_exports.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final cartItems = CartManager().items;

    return Scaffold(
      appBar: CustomAppBar(
        title: AppTranslator.cartPageTitle,
        leading: AppBackButton(),
      ),
      body: cartItems.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    AppIcons.shoppingCart,
                    size: 64,
                    color: AppColors.greyFifth,
                  ),
                  AppPaddings.mediumPaddingHeight,
                  Text(
                    AppTranslator.cartPageEmpty,
                    style: AppTextStyles.headline3bold.copyWith(
                      color: AppColors.greySeventh,
                    ),
                  ),
                ],
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      final item = cartItems[index];
                      return ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: AppColors.greyThird,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.network(
                            item.imageUrl,
                            fit: BoxFit.contain,
                          ),
                        ),
                        title: Text(
                          item.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.headline3bold,
                        ),
                        subtitle: Text('\$${item.price}'),
                        trailing: IconButton(
                          icon: const Icon(
                            AppIcons.delete,
                            color: AppColors.greySeventh,
                          ),
                          onPressed: () {
                            setState(() {
                              CartManager().removeItem(item);
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: AppPaddings.largePadding,
                  child: SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          CartManager().clearCart();
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(AppTranslator.cartPageCheckout),
                          ),
                        );
                      },
                      child: Text(
                        AppTranslator.cartPageCheckoutButton,
                        style: AppTextStyles.body1Semibold.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
