.class public interface abstract Lcom/android/server/locksettings/RebootEscrowProviderInterface;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract clearRebootEscrowKey()V
.end method

.method public abstract getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;
.end method

.method public abstract getType()I
.end method

.method public abstract hasRebootEscrowSupport()Z
.end method

.method public abstract storeRebootEscrowKey(Lcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z
.end method
