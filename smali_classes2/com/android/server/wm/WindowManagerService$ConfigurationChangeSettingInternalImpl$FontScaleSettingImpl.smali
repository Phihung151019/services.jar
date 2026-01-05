.class public final Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl$FontScaleSettingImpl;
.super Landroid/window/ConfigurationChangeSetting$FontScaleSetting;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;Landroid/os/Parcel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl$FontScaleSettingImpl;->this$1:Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;

    invoke-direct {p0, p2}, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final apply(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl$FontScaleSettingImpl;->this$1:Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "font_scale"

    iget v2, p0, Landroid/window/ConfigurationChangeSetting$FontScaleSetting;->mFontScaleFactor:F

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl$FontScaleSettingImpl;->this$1:Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$ConfigurationChangeSettingInternalImpl;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateFontScaleIfNeeded(I)V

    return-void
.end method
