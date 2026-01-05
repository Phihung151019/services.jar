.class public final synthetic Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/KeyboardLayoutManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyboardLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/input/KeyboardLayoutManager;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/input/KeyboardLayoutManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager;->updateKeyboardLayouts()V

    return v1

    :cond_1
    sget-boolean p1, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "KeyboardLayoutManager"

    const-string/jumbo v0, "Reloading keyboard layouts."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadKeyboardLayouts()V

    return v1

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_4

    aget v3, p1, v2

    invoke-virtual {p0, v3, v1}, Lcom/android/server/input/KeyboardLayoutManager;->onInputDeviceChangedInternal(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method
