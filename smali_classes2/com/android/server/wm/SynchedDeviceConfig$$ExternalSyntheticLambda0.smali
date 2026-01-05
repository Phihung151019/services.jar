.class public final synthetic Lcom/android/server/wm/SynchedDeviceConfig$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/SynchedDeviceConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/SynchedDeviceConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/SynchedDeviceConfig$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SynchedDeviceConfig;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wm/SynchedDeviceConfig$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/SynchedDeviceConfig;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;

    iget-boolean v0, p2, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->mDefaultValue:Z

    iget-object p0, p0, Lcom/android/server/wm/SynchedDeviceConfig;->mNamespace:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, p2, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigEntry;->mOverrideValue:Z

    return-void
.end method
