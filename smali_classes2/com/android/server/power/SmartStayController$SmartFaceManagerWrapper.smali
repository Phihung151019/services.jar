.class public final Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mClock:Lcom/android/server/power/SmartStayController$Injector$$ExternalSyntheticLambda0;

.field public final mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/SmartStayController$Injector$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;->mClock:Lcom/android/server/power/SmartStayController$Injector$$ExternalSyntheticLambda0;

    invoke-static {p1}, Lcom/samsung/android/smartface/SmartFaceManager;->getSmartFaceManager(Landroid/content/Context;)Lcom/samsung/android/smartface/SmartFaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/SmartStayController$SmartFaceManagerWrapper;->mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    return-void
.end method
