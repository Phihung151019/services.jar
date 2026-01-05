.class public final synthetic Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/input/debug/FocusEventDebugView;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/debug/FocusEventDebugView;Landroid/view/KeyEvent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/debug/FocusEventDebugView;

    iput-object p2, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/debug/FocusEventDebugView;Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/debug/FocusEventDebugView;

    iput-object p2, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/debug/FocusEventDebugView;

    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/view/KeyEvent;

    sget v1, Lcom/android/server/input/debug/FocusEventDebugView;->$r8$clinit:I

    invoke-virtual {v0, p0}, Lcom/android/server/input/debug/FocusEventDebugView;->handleKeyEvent(Landroid/view/KeyEvent;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/debug/FocusEventDebugView;

    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/view/MotionEvent;

    sget v1, Lcom/android/server/input/debug/FocusEventDebugView;->$r8$clinit:I

    invoke-virtual {v0, p0}, Lcom/android/server/input/debug/FocusEventDebugView;->handleRotaryInput(Landroid/view/MotionEvent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
