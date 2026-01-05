.class public final Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHostname:Ljava/lang/String;

.field public final mLatencyMs:I

.field public final mNetId:I

.field public final mReturnCode:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    iput p2, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mReturnCode:I

    iput-object p5, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mHostname:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mUid:I

    iput p4, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mLatencyMs:I

    return-void
.end method
