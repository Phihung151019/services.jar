.class public final Lcom/android/server/am/InstrumentationReporter$Report;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mName:Landroid/content/ComponentName;

.field public final mResultCode:I

.field public final mResults:Landroid/os/Bundle;

.field public final mType:I

.field public final mWatcher:Landroid/app/IInstrumentationWatcher;


# direct methods
.method public constructor <init>(ILandroid/app/IInstrumentationWatcher;Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/InstrumentationReporter$Report;->mType:I

    iput-object p2, p0, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iput-object p3, p0, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    iput-object p5, p0, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    invoke-interface {p2}, Landroid/app/IInstrumentationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    return-void
.end method
