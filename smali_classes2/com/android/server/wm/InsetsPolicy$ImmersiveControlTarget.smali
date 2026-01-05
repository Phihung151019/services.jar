.class public final Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;
.super Lcom/android/server/wm/InsetsPolicy$ControlTarget;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mVisibleTypes:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/InsetsPolicy$ControlTarget;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    iput p3, p0, Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;->mVisibleTypes:I

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$ControlTarget;->mInsetsController:Landroid/view/InsetsController;

    invoke-virtual {p0, p3, p4}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    return-void
.end method


# virtual methods
.method public final getRequestedVisibleTypes()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;->mVisibleTypes:I

    return p0
.end method

.method public final isRequestedVisible(I)Z
    .locals 0

    iget p0, p0, Lcom/android/server/wm/InsetsPolicy$ImmersiveControlTarget;->mVisibleTypes:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
