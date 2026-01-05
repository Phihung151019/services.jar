.class public final synthetic Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/input/debug/FocusEventDebugView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/debug/FocusEventDebugView;ZI)V
    .locals 0

    iput p3, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/debug/FocusEventDebugView;

    iput-boolean p2, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;->f$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/debug/FocusEventDebugView;

    iget-boolean p0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;->f$1:Z

    sget v1, Lcom/android/server/input/debug/FocusEventDebugView;->$r8$clinit:I

    invoke-virtual {v0, p0}, Lcom/android/server/input/debug/FocusEventDebugView;->handleUpdateShowRotaryInput(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/debug/FocusEventDebugView;

    iget-boolean p0, p0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/server/input/debug/FocusEventDebugView;->$r8$lambda$NOfikC3SqQwvKrlgqWnqfisz50A(Lcom/android/server/input/debug/FocusEventDebugView;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
