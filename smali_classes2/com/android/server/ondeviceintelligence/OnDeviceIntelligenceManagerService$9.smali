.class public final Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$9;
.super Landroid/app/ondeviceintelligence/IProcessingSignal$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$c:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$9;->val$c:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IProcessingSignal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendSignal(Landroid/os/PersistableBundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$9;->val$c:Landroid/os/IBinder;

    invoke-static {p0}, Landroid/app/ondeviceintelligence/IProcessingSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IProcessingSignal;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/app/ondeviceintelligence/IProcessingSignal;->sendSignal(Landroid/os/PersistableBundle;)V

    return-void
.end method
