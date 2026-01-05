.class public final Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mObserver:Landroid/app/ambientcontext/IAmbientContextObserver;

.field public final mPackageName:Ljava/lang/String;

.field public final mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/app/ambientcontext/AmbientContextEventRequest;Ljava/lang/String;Landroid/app/ambientcontext/IAmbientContextObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mUserId:I

    iput-object p2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

    iput-object p3, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mObserver:Landroid/app/ambientcontext/IAmbientContextObserver;

    return-void
.end method
