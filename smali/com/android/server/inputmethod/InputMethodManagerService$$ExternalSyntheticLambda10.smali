.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;IIII)V
    .locals 0

    iput p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;->f$1:I

    iput p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;->f$2:I

    iput p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;->f$3:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;->f$1:I

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;->f$2:I

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;->f$3:I

    sget-boolean v3, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodPickerLocked(III)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;->f$1:I

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;->f$2:I

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;->f$3:I

    sget-boolean v3, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    :try_start_1
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodPickerLocked(III)V

    monitor-exit v3

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;->f$1:I

    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;->f$2:I

    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda10;->f$3:I

    sget-boolean v3, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    :try_start_2
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodPickerLocked(III)V

    monitor-exit v3

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
