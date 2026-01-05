.class public Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;
.super Landroid/net/ip/IpClientCallbacks;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field private final mCV:Landroid/os/ConditionVariable;

.field private mCallbackLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/net/ip/IpClientCallbacks;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCV:Landroid/os/ConditionVariable;

    return-void
.end method


# virtual methods
.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCV:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCV:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public waitForProvisioning()Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCV:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method
