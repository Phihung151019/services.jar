.class public final Lcom/android/server/inputmethod/InputMethodDeviceConfigs;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDeviceConfigChangedListener:Lcom/android/server/inputmethod/InputMethodDeviceConfigs$$ExternalSyntheticLambda0;

.field public mHideImeWhenNoEditorFocus:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/inputmethod/InputMethodDeviceConfigs$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodDeviceConfigs$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodDeviceConfigs;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;->mDeviceConfigChangedListener:Lcom/android/server/inputmethod/InputMethodDeviceConfigs$$ExternalSyntheticLambda0;

    const-string/jumbo v1, "input_method_manager"

    const-string/jumbo v2, "hide_ime_when_no_editor_focus"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;->mHideImeWhenNoEditorFocus:Z

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;->mDeviceConfigChangedListener:Lcom/android/server/inputmethod/InputMethodDeviceConfigs$$ExternalSyntheticLambda0;

    invoke-static {p0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method
