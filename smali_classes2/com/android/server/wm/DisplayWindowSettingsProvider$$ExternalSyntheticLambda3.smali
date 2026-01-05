.class public final synthetic Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
