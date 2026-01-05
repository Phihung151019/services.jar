.class public final Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final context:Landroid/content/Context;

.field public final service:Landroid/security/IKeyChainService;

.field public final serviceConnection:Lcom/android/server/emailksproxy/EmailKeystoreService$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/emailksproxy/EmailKeystoreService$1;Landroid/security/IKeyChainService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->serviceConnection:Lcom/android/server/emailksproxy/EmailKeystoreService$1;

    iput-object p3, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->service:Landroid/security/IKeyChainService;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->serviceConnection:Lcom/android/server/emailksproxy/EmailKeystoreService$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
