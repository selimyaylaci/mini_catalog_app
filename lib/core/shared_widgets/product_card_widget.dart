import '../_core_exports.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.greyFirst,
              borderRadius: BorderRadius.circular(16),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(
                  AppIcons.imageNotSupported,
                  color: AppColors.greySecond,
                ),
              ),
            ),
          ),
        ),
        AppPaddings.smallPaddingHeight,
        Text(
          product.title,
          style: AppTextStyles.body2Bold,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 4),
        Text(
          '\$${product.price.toStringAsFixed(0)}',
          style: AppTextStyles.body2Semibold.copyWith(color: AppColors.sub),
        ),
      ],
    );
  }
}
