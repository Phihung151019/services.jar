.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/DisplayContent;

    iput p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/wm/DisplayContent;

    iget p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;->f$2:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->applyRotation(I)V

    return-void
.end method
