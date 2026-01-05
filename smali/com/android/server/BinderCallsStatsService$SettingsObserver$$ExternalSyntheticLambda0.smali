.class public final synthetic Lcom/android/server/BinderCallsStatsService$SettingsObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$WorkSourceProvider;


# virtual methods
.method public final resolveWorkSourceUid(I)I
    .locals 0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method
