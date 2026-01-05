.class public final Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final mDeathRecipient:Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;

.field public final mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

.field public final mSmartspaceConfig:Landroid/app/smartspace/SmartspaceConfig;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceConfig;Landroid/os/IBinder;Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    iput-object p2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mSmartspaceConfig:Landroid/app/smartspace/SmartspaceConfig;

    iput-object p3, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mToken:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->mDeathRecipient:Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda3;

    return-void
.end method
