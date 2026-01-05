.class public final synthetic Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/debug/TouchpadDebugViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/debug/TouchpadDebugViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/debug/TouchpadDebugViewController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/debug/TouchpadDebugViewController;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadDebugViewController;->mTouchpadDebugView:Lcom/android/server/input/debug/TouchpadDebugView;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/server/input/debug/TouchpadDebugView;->mTouchpadId:I

    invoke-virtual {p0, v0}, Lcom/android/server/input/debug/TouchpadDebugViewController;->hideDebugView(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/TouchpadDebugViewController;->showDebugView(I)V

    return-void
.end method
