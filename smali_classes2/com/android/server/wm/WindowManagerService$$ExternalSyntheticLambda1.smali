.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    iput p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda1;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    iget p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda1;->f$0:I

    packed-switch v2, :pswitch_data_0

    check-cast p1, Lcom/android/server/wm/WindowState;

    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :pswitch_0
    check-cast p1, Lcom/android/server/wm/Task;

    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
