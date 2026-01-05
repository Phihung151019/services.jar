.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;

    return-void
.end method


# virtual methods
.method public final onEscrowTokenActivated(JI)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;

    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->DEBUG_DUMP:Z

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;->onWeakEscrowTokenActivated(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "LockSettingsService"

    const-string p2, "Exception while notifying weak escrow token has been activated"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
