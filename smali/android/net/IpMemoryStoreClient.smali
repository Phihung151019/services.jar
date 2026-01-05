.class public abstract Landroid/net/IpMemoryStoreClient;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field private static final TAG:Ljava/lang/String; = "IpMemoryStoreClient"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$-agmG3QnCnTGjpVGuNCsN8Zf7Ko(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 0

    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->lambda$retrieveNetworkAttributes$14(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3NXT457T82CtcVsg8GobBtlPKQ4(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/IpMemoryStoreClient;->lambda$isSameNetwork$10(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4j3dNF67o6NAOGYtmRLAylaDeoE(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 0

    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->lambda$delete$20(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$A1dJWBt0zGMwIg94ZNfwEJPFkqQ(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/net/IpMemoryStoreClient;->lambda$retrieveNetworkAttributes$13(Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CVFuVz16jcHPC8U-Sx6-K762Gvc(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 0

    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->lambda$isSameNetwork$11(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EqiuXKS_kMkqzw8-ZS1i2veSvM8(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 0

    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->lambda$findL2Key$8(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F4PDL_SdP2inoqkygo2e8UmmOOk(Landroid/net/IIpMemoryStore;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/net/IpMemoryStoreClient;->lambda$findL2Key$6(Landroid/net/IIpMemoryStore;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FtdNBOd4lhXUNlGtVAFL2R3nqEc(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/IpMemoryStoreClient;->lambda$storeNetworkAttributes$1(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gtfbn8H-Hmv1h-JCbed5WTdnnEM(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/net/IpMemoryStoreClient;->lambda$isSameNetwork$9(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HNYtD8BPOyUv7tcyyeuKiVvlE9o(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/IpMemoryStoreClient;->lambda$delete$19(Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lwi-UV2KJSgpGNur1LVnGMVszhA(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/IpMemoryStoreClient;->lambda$retrieveBlob$15(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M8u7jyyYWsGpRh7kG9dUg0fqBSY(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 0

    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->lambda$deleteCluster$23(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PYxMl-8VTNMxiGLoTuj7FUrL7Ss(Landroid/net/IIpMemoryStore;)V
    .locals 0

    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->lambda$factoryReset$24(Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SfabcXRuWB5I60P_0BL0YEqo97E(Landroid/net/IpMemoryStoreClient;Landroid/net/IIpMemoryStore;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/IpMemoryStoreClient;->lambda$factoryReset$25(Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U6AxfDXBAs4ISSIivSALg-8kfCw(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/IpMemoryStoreClient;->lambda$deleteCluster$22(Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WvHZ-Vs5bUuhBEW_zmyd8lOPYGQ(Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->lambda$storeBlob$5(Landroid/net/ipmemorystore/OnStatusListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XYZsuAt7vHRidyIn_z64I1F9I0g(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/net/IpMemoryStoreClient;->lambda$retrieveNetworkEventCount$27(Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZmYKgDCCOgRrpoQcjfpEnx8avws(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/net/IpMemoryStoreClient;->lambda$storeNetworkEvent$30(Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dglMsU1c29thjop9O2HnPUSy4-0(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/net/IpMemoryStoreClient;->lambda$retrieveBlob$16(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gKa5xDJhUAOR6d9F-d-TV7ZaWow(Landroid/net/IIpMemoryStore;Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/IpMemoryStoreClient;->lambda$retrieveNetworkEventCount$26(Landroid/net/IIpMemoryStore;Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gzljqXXPBsYa9XLZEzQWqEbOr-0(Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->lambda$storeNetworkAttributes$2(Landroid/net/ipmemorystore/OnStatusListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h6bbP-SfaTFo7Ff09F-yXftwhEc(Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->lambda$storeNetworkEvent$31(Landroid/net/ipmemorystore/OnStatusListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hICnBCSsnrXREBHQ8OnhnN1ZUjs(Landroid/net/IIpMemoryStore;Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Landroid/net/IpMemoryStoreClient;->lambda$storeNetworkEvent$29(Landroid/net/IIpMemoryStore;Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kQgPvbRYTAs7OHCT5VWHVYBvR5s(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/net/IpMemoryStoreClient;->lambda$delete$18(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kw0C-x-oOTHnTWTYjF33o57o8-Q(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/net/IpMemoryStoreClient;->lambda$deleteCluster$21(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m-MiiJpkUlbFj594pow56N1SWac(Landroid/net/IpMemoryStoreClient;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/net/IpMemoryStoreClient;->lambda$findL2Key$7(Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oxBl3Mx7RwhlNwWErUzS1J8-yoM(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/net/IpMemoryStoreClient;->lambda$storeBlob$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rmld3gkm9_RMJEplNWL6IUwOKUc(Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V
    .locals 0

    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->lambda$retrieveNetworkEventCount$28(Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rscP1A28INZB0xb8E8vEaCkPx1g(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/net/IpMemoryStoreClient;->lambda$retrieveNetworkAttributes$12(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tPwd2hc2Euvwob2T0xc07lBBUjs(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/net/IpMemoryStoreClient;->lambda$storeNetworkAttributes$0(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vk0Nh2Qc67PGCXFRrO6ttafnr-w(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 0

    invoke-static {p0}, Landroid/net/IpMemoryStoreClient;->lambda$retrieveBlob$17(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wCeBxaSvb8AFpavF-NMYTPzmdok(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroid/net/IpMemoryStoreClient;->lambda$storeBlob$3(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/net/IpMemoryStoreClient;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "missing context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V
    .locals 1

    const-string v0, "Failed to execute remote procedure call"

    invoke-direct {p0, v0, p1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V
    .locals 0

    :try_start_0
    invoke-interface {p2}, Landroid/net/IpMemoryStoreClient$ThrowingRunnable;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p2, Landroid/net/IpMemoryStoreClient;->TAG:Ljava/lang/String;

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic lambda$delete$18(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p3}, Landroid/net/ipmemorystore/OnDeleteStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnDeleteStatusListener;)Landroid/net/ipmemorystore/IOnStatusAndCountListener;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Landroid/net/IIpMemoryStore;->delete(Ljava/lang/String;ZLandroid/net/ipmemorystore/IOnStatusAndCountListener;)V

    return-void
.end method

.method private synthetic lambda$delete$19(Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 6

    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;I)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private static synthetic lambda$delete$20(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/net/ipmemorystore/OnDeleteStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;I)V

    return-void
.end method

.method private static synthetic lambda$deleteCluster$21(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p3}, Landroid/net/ipmemorystore/OnDeleteStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnDeleteStatusListener;)Landroid/net/ipmemorystore/IOnStatusAndCountListener;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Landroid/net/IIpMemoryStore;->deleteCluster(Ljava/lang/String;ZLandroid/net/ipmemorystore/IOnStatusAndCountListener;)V

    return-void
.end method

.method private synthetic lambda$deleteCluster$22(Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 6

    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;

    const/4 v5, 0x1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda13;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;I)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private static synthetic lambda$deleteCluster$23(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/net/ipmemorystore/OnDeleteStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;I)V

    return-void
.end method

.method private static synthetic lambda$factoryReset$24(Landroid/net/IIpMemoryStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0}, Landroid/net/IIpMemoryStore;->factoryReset()V

    return-void
.end method

.method private synthetic lambda$factoryReset$25(Landroid/net/IIpMemoryStore;)V
    .locals 2

    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private static synthetic lambda$findL2Key$6(Landroid/net/IIpMemoryStore;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/ipmemorystore/NetworkAttributes;->toParcelable()Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    move-result-object p1

    invoke-static {p2}, Landroid/net/ipmemorystore/OnL2KeyResponseListener;->toAIDL(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)Landroid/net/ipmemorystore/IOnL2KeyResponseListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/net/IIpMemoryStore;->findL2Key(Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnL2KeyResponseListener;)V

    return-void
.end method

.method private synthetic lambda$findL2Key$7(Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;Landroid/net/IIpMemoryStore;)V
    .locals 2

    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;

    const/4 v1, 0x1

    invoke-direct {v0, p3, p1, p2, v1}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private static synthetic lambda$findL2Key$8(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/net/ipmemorystore/OnL2KeyResponseListener;->onL2KeyResponse(Landroid/net/ipmemorystore/Status;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$isSameNetwork$10(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;Landroid/net/IIpMemoryStore;)V
    .locals 6

    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;

    const/4 v5, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private static synthetic lambda$isSameNetwork$11(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;->onSameL3NetworkResponse(Landroid/net/ipmemorystore/Status;Landroid/net/ipmemorystore/SameL3NetworkResponse;)V

    return-void
.end method

.method private static synthetic lambda$isSameNetwork$9(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p3}, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;->toAIDL(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Landroid/net/IIpMemoryStore;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;)V

    return-void
.end method

.method private static synthetic lambda$retrieveBlob$15(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p4}, Landroid/net/ipmemorystore/OnBlobRetrievedListener;->toAIDL(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    move-result-object p4

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/net/IIpMemoryStore;->retrieveBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnBlobRetrievedListener;)V

    return-void
.end method

.method private synthetic lambda$retrieveBlob$16(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;Landroid/net/IIpMemoryStore;)V
    .locals 6

    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v1, p5

    invoke-direct/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private static synthetic lambda$retrieveBlob$17(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1, v1}, Landroid/net/ipmemorystore/OnBlobRetrievedListener;->onBlobRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V

    return-void
.end method

.method private static synthetic lambda$retrieveNetworkAttributes$12(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;->toAIDL(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/net/IIpMemoryStore;->retrieveNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;)V

    return-void
.end method

.method private synthetic lambda$retrieveNetworkAttributes$13(Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;Landroid/net/IIpMemoryStore;)V
    .locals 2

    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p1, p2, v1}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda8;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private static synthetic lambda$retrieveNetworkAttributes$14(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, v1}, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;->onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;)V

    return-void
.end method

.method private static synthetic lambda$retrieveNetworkEventCount$26(Landroid/net/IIpMemoryStore;Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p4}, Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;->toAIDL(Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)Landroid/net/ipmemorystore/IOnNetworkEventCountRetrievedListener;

    move-result-object p4

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/net/IIpMemoryStore;->retrieveNetworkEventCount(Ljava/lang/String;[J[ILandroid/net/ipmemorystore/IOnNetworkEventCountRetrievedListener;)V

    return-void
.end method

.method private synthetic lambda$retrieveNetworkEventCount$27(Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;Landroid/net/IIpMemoryStore;)V
    .locals 6

    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v1, p5

    invoke-direct/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda16;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private static synthetic lambda$retrieveNetworkEventCount$28(Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-interface {p0, v0, v1}, Landroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;->onNetworkEventCountRetrieved(Landroid/net/ipmemorystore/Status;[I)V

    return-void
.end method

.method private static synthetic lambda$storeBlob$3(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p5}, Landroid/net/ipmemorystore/OnStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnStatusListener;)Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object p5

    invoke-interface/range {p0 .. p5}, Landroid/net/IIpMemoryStore;->storeBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/IOnStatusListener;)V

    return-void
.end method

.method private synthetic lambda$storeBlob$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 7

    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda23;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v1, p6

    invoke-direct/range {v0 .. v6}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda23;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private static synthetic lambda$storeBlob$5(Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/net/ipmemorystore/OnStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;)V

    return-void
.end method

.method private static synthetic lambda$storeNetworkAttributes$0(Landroid/net/IIpMemoryStore;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p2}, Landroid/net/ipmemorystore/NetworkAttributes;->toParcelable()Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    move-result-object p2

    invoke-static {p3}, Landroid/net/ipmemorystore/OnStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnStatusListener;)Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Landroid/net/IIpMemoryStore;->storeNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnStatusListener;)V

    return-void
.end method

.method private synthetic lambda$storeNetworkAttributes$1(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 6

    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda15;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private static synthetic lambda$storeNetworkAttributes$2(Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/net/ipmemorystore/OnStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;)V

    return-void
.end method

.method private static synthetic lambda$storeNetworkEvent$29(Landroid/net/IIpMemoryStore;Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p7}, Landroid/net/ipmemorystore/OnStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnStatusListener;)Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object p7

    invoke-interface/range {p0 .. p7}, Landroid/net/IIpMemoryStore;->storeNetworkEvent(Ljava/lang/String;JJILandroid/net/ipmemorystore/IOnStatusListener;)V

    return-void
.end method

.method private synthetic lambda$storeNetworkEvent$30(Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V
    .locals 9

    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    move-object/from16 v8, p7

    move-object/from16 v1, p8

    invoke-direct/range {v0 .. v8}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda11;-><init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;)V

    invoke-direct {p0, v0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method private static synthetic lambda$storeNetworkEvent$31(Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/net/ipmemorystore/Status;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/net/ipmemorystore/OnStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    :try_start_1
    invoke-direct/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;I)V

    invoke-virtual {v1, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object v1, p0

    move-object v4, p3

    :catch_1
    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;

    const/4 p1, 0x0

    invoke-direct {p0, v4, p1}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;-><init>(Landroid/net/ipmemorystore/OnDeleteStatusListener;I)V

    const-string p1, "Error deleting from the memory store"

    invoke-direct {v1, p1, p0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    :goto_0
    return-void
.end method

.method public deleteCluster(Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    :try_start_1
    invoke-direct/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;I)V

    invoke-virtual {v1, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object v1, p0

    move-object v4, p3

    :catch_1
    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;

    const/4 p1, 0x1

    invoke-direct {p0, v4, p1}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda5;-><init>(Landroid/net/ipmemorystore/OnDeleteStatusListener;I)V

    const-string p1, "Error deleting from the memory store"

    invoke-direct {v1, p1, p0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    :goto_0
    return-void
.end method

.method public factoryReset()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda14;-><init>(Landroid/net/IpMemoryStoreClient;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Landroid/net/IpMemoryStoreClient;->TAG:Ljava/lang/String;

    const-string v1, "Error executing factory reset"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public findL2Key(Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda26;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda26;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p2}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    const-string p2, "Error finding L2 Key"

    invoke-direct {p0, p2, p1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public isSameNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_1
    invoke-direct/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object v1, p0

    move-object v4, p3

    :catch_1
    new-instance p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v4}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    const-string p1, "Error checking for network sameness"

    invoke-direct {v1, p1, p0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public retrieveBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda9;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_1
    invoke-direct/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda9;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    invoke-virtual {v1, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object v1, p0

    move-object v5, p4

    :catch_1
    new-instance p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;

    const/4 p1, 0x1

    invoke-direct {p0, p1, v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    const-string p1, "Error retrieving blob"

    invoke-direct {v1, p1, p0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public retrieveNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda26;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda26;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p2}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    const-string p2, "Error retrieving network attributes"

    invoke-direct {p0, p2, p1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public retrieveNetworkEventCount(Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda9;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_1
    invoke-direct/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda9;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;[J[ILandroid/net/ipmemorystore/OnNetworkEventCountRetrievedListener;)V

    invoke-virtual {v1, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object v1, p0

    move-object v5, p4

    :catch_1
    new-instance p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;

    const/4 p1, 0x3

    invoke-direct {p0, p1, v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    const-string p1, "Error retrieving network event count"

    invoke-direct {v1, p1, p0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    return-void
.end method

.method public abstract runWhenServiceReady(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/IIpMemoryStore;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation
.end method

.method public storeBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 7

    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda21;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    :try_start_1
    invoke-direct/range {v0 .. v6}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda21;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V

    invoke-virtual {v1, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object v1, p0

    move-object v6, p5

    :catch_1
    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda1;

    const/4 p1, 0x1

    invoke-direct {p0, v6, p1}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda1;-><init>(Landroid/net/ipmemorystore/OnStatusListener;I)V

    const-string p1, "Error storing blob"

    invoke-direct {v1, p1, p0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    :goto_0
    return-void
.end method

.method public storeNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_1
    invoke-direct/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda0;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object v1, p0

    move-object v4, p3

    :catch_1
    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda1;

    const/4 p1, 0x0

    invoke-direct {p0, v4, p1}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda1;-><init>(Landroid/net/ipmemorystore/OnStatusListener;I)V

    const-string p1, "Error storing network attributes"

    invoke-direct {v1, p1, p0}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    :goto_0
    return-void
.end method

.method public storeNetworkEvent(Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;)V
    .locals 9

    :try_start_0
    new-instance v0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    move-object/from16 v8, p7

    :try_start_1
    invoke-direct/range {v0 .. v8}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda2;-><init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;JJILandroid/net/ipmemorystore/OnStatusListener;)V

    invoke-virtual {p0, v0}, Landroid/net/IpMemoryStoreClient;->runWhenServiceReady(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object/from16 v8, p7

    :catch_1
    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda1;

    const/4 p2, 0x2

    invoke-direct {p1, v8, p2}, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda1;-><init>(Landroid/net/ipmemorystore/OnStatusListener;I)V

    const-string p2, "Error storing network event"

    invoke-direct {p0, p2, p1}, Landroid/net/IpMemoryStoreClient;->ignoringRemoteException(Ljava/lang/String;Landroid/net/IpMemoryStoreClient$ThrowingRunnable;)V

    :goto_0
    return-void
.end method
