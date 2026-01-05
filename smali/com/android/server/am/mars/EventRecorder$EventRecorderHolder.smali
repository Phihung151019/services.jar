.class public abstract Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/EventRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/mars/EventRecorder;

    invoke-direct {v0}, Lcom/android/server/am/mars/EventRecorder;-><init>()V

    sput-object v0, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    return-void
.end method
