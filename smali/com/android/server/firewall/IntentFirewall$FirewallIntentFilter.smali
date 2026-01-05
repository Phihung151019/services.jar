.class public final Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
.super Landroid/content/IntentFilter;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final rule:Lcom/android/server/firewall/IntentFirewall$Rule;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/IntentFirewall$Rule;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->rule:Lcom/android/server/firewall/IntentFirewall$Rule;

    return-void
.end method
