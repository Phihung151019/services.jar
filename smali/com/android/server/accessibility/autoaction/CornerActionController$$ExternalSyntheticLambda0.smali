.class public final synthetic Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

.field public final synthetic f$1:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionController;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda0;->f$1:[Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/autoaction/CornerActionController;

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda0;->f$1:[Z

    iget-object v1, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-boolean v1, p0, v2

    iget-object p0, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    :cond_0
    return-void
.end method
