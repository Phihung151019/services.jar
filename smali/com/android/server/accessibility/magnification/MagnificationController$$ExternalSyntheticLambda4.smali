.class public final synthetic Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/view/accessibility/MagnificationAnimationCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/magnification/MagnificationController;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationController;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    iput p2, p0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda4;->f$1:I

    iput p3, p0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    iget v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda4;->f$1:I

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda4;->f$2:I

    iget-object p1, p1, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    return-void
.end method
