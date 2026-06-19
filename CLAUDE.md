# KitchenProvisionShared

Shared Swift package containing DTOs (request/response types and models) used by both the KitchenProvision iOS app and the KitchenProvision backend. No business logic — pure data transfer types.

**Current version: 1.0.16**

## Types

### Requests

| Type | Fields |
|------|--------|
| `AuthRequest` | `appleIdentityToken`, `displayName?`, `email?` |
| `EnrichIngredientRequest` | `name` |
| `EnrichIngredientsRequest` | `names: [String]` |
| `NutritionRequest` | `title`, `ingredients: [NutritionIngredient]`, `servings?` |
| `ParseItemRequest` | `barcode?`, `productName?`, `productWeight?`, `rawText?`, `imageBase64?` |
| `ParseReceiptRequest` | `rawText?`, `imageBase64?` |
| `ParseRecipeRequest` | `source: RecipeImportSource`, `content`, `images?` |
| `ParseStepsRequest` | `steps: [String]`, `ingredients: [String]` |
| `SuggestMealsRequest` | `pantryItems: [PantryItemSnapshot]`, `dietaryModifiers: [String]` |

### Responses

| Type | Fields |
|------|--------|
| `AuthResponse` | `sessionToken`, `userID`, `displayName?`, `email?` |
| `EnrichIngredientResponse` | `inputName`, `isRecognized`, `confidence`, `canonicalName?`, `aliases`, `density?`, `isLiquid`, `aisle?` |
| `EnrichIngredientsResponse` | `results: [EnrichIngredientResponse]` |
| `NutritionResponse` | `caloriesPerServing?`, `proteinPerServing?`, `carbsPerServing?`, `fiberPerServing?`, `sugarPerServing?`, `fatPerServing?`, `saturatedFatPerServing?`, `sodiumPerServing?`, `isEstimated` |
| `ParseItemResponse` | `ingredientName`, `quantity`, `unit: MeasurementUnit`, `location`, `estimatedExpiryDays?`, `confidence?` |
| `ParseReceiptResponse` | `receipt: ParsedReceipt` |
| `ParseRecipeResponse` | `recipe: ParsedRecipe` |
| `ParseStepsResponse` | `steps: [String]` |
| `SuggestMealsResponse` | `suggestions: [MealSuggestion]` |

### Models

| Type | Fields |
|------|--------|
| `MealSuggestion` | `id: UUID`, `name`, `description?`, `matchingIngredientCount?`, `ingredients: [ParsedRecipeIngredient]`, `steps: [ParsedRecipeStep]?` |
| `NutritionIngredient` | `name`, `quantity?`, `unit?` |
| `PantryItemSnapshot` | `ingredientName?`, `category?`, `quantity`, `unit: MeasurementUnit`, `expiryDate?`, `location?` |
| `ParsedLineItem` | `id: UUID`, `ingredientName`, `quantity`, `unit`, `rawText?`, `price?`, `location?`, `estimatedExpiryDays?`, `aisle?` |
| `ParsedReceipt` | `storeName?`, `storeAddress?`, `storeCity?`, `storeState?`, `storeZip?`, `storePhone?`, `storeNumber?`, `receiptDate?`, `receiptTime?`, `paymentMethod?`, `subtotal?`, `tax?`, `total?`, `items: [ParsedLineItem]` |
| `ParsedRecipe` | `title`, `ingredients: [ParsedRecipeIngredient]`, `prepTime?`, `cookTime?`, `totalTime?`, `yieldQuantity?`, `yieldDescription?`, `imageURL?`, `steps?` |
| `ParsedRecipeIngredient` | `id: UUID`, `ingredientName`, `quantity`, `unit`, `preparation?`, `sectionName?`, `order?`, `aisle?` |
| `ParsedRecipeStep` | `id: UUID`, `order`, `instruction` |

### Enums

- `MeasurementUnit` — weight (gram, kilogram, ounce, pound), metric volume (milliliter, liter), US volume (teaspoon, tablespoon, cup, fluidOunce, pint, quart, gallon), count (piece, dozen), approximate (pinch, dash, toTaste)
- `RecipeImportSource` — `url`, `text`, `schemaOrg`, `image`

## Versioning

After adding or changing any type, bump the version and tag:

```bash
# 1. Update the version reference in this file
# 2. Commit the change
git tag X.X.X
git push
git push --tags
```

Then update the version pin in `Package.swift` for **both** consumers:
- iOS app (KitchenProvision)
- Backend (KitchenProvisionServer)
