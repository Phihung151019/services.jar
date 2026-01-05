.class public interface abstract Lcom/android/server/media/DeviceRouteController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract getAvailableRoutes()Ljava/util/List;
.end method

.method public abstract getSelectedRoute()Landroid/media/MediaRoute2Info;
.end method

.method public abstract start(Landroid/os/UserHandle;)V
.end method

.method public abstract stop()V
.end method

.method public abstract transferTo(Ljava/lang/String;)V
.end method

.method public abstract updateVolume(I)Z
.end method
