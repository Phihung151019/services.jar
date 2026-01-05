.class public final Lcom/android/server/enterprise/firewall/Firewall$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/firewall/Firewall;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/firewall/Firewall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$NetworkCallback;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall$NetworkCallback;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/enterprise/firewall/Firewall$4;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/Firewall$4;-><init>(Lcom/android/server/enterprise/firewall/Firewall;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
