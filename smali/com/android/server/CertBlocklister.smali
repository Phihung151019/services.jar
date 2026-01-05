.class public final Lcom/android/server/CertBlocklister;
.super Landroid/os/Binder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final PUBKEY_PATH:Ljava/lang/String;

.field public static final SERIAL_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_DATA"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/misc/keychain/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pubkey_blacklist.txt"

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/CertBlocklister;->PUBKEY_PATH:Ljava/lang/String;

    const-string/jumbo v1, "serial_blacklist.txt"

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CertBlocklister;->SERIAL_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "pubkey_blacklist"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/android/server/CertBlocklister$BlocklistObserver;

    sget-object v2, Lcom/android/server/CertBlocklister;->PUBKEY_PATH:Ljava/lang/String;

    invoke-direct {v1, p1, v2, p0}, Lcom/android/server/CertBlocklister$BlocklistObserver;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v0, "serial_blacklist"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/CertBlocklister$BlocklistObserver;

    sget-object v3, Lcom/android/server/CertBlocklister;->SERIAL_PATH:Ljava/lang/String;

    invoke-direct {v2, v0, v3, p0}, Lcom/android/server/CertBlocklister$BlocklistObserver;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v1, p1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
