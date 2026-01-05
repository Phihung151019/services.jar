.class public final Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl$DensitySettingImpl;
.super Landroid/window/ConfigurationChangeSetting$DensitySetting;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;Landroid/os/Parcel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl$DensitySettingImpl;->this$1:Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;

    invoke-direct {p0, p2}, Landroid/window/ConfigurationChangeSetting$DensitySetting;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final apply(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl$DensitySettingImpl;->this$1:Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDisplayId:I

    iget p0, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDensity:I

    sget v2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/wm/WindowManagerService;->setForcedDensityLockedInternal(III)V

    return-void
.end method
