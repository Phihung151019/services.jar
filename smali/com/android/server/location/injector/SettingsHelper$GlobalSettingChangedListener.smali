.class public interface abstract Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;


# virtual methods
.method public abstract onSettingChanged()V
.end method

.method public onSettingChanged(I)V
    .locals 0

    invoke-interface {p0}, Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;->onSettingChanged()V

    return-void
.end method
