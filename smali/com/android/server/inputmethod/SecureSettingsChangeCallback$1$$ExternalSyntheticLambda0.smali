.class public final synthetic Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArrayMap;

.field public final synthetic f$1:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArrayMap;Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

    iput p4, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

    iget p0, p0, Lcom/android/server/inputmethod/SecureSettingsChangeCallback$1$$ExternalSyntheticLambda0;->f$3:I

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    sget-boolean v1, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onSecureSettingsChangedLocked(ILjava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method
