.class public final Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field public final mActivityOptions:Landroid/app/ActivityOptions;

.field public final mActivityResolved:Z

.field public final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;-><init>(Landroid/content/Intent;Landroid/app/ActivityOptions;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/app/ActivityOptions;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->mIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->mActivityOptions:Landroid/app/ActivityOptions;

    iput-boolean p3, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->mActivityResolved:Z

    return-void
.end method


# virtual methods
.method public getActivityOptions()Landroid/app/ActivityOptions;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->mActivityOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public isActivityResolved()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->mActivityResolved:Z

    return p0
.end method
