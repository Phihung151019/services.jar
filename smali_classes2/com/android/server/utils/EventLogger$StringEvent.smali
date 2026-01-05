.class public final Lcom/android/server/utils/EventLogger$StringEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/EventLogger$StringEvent;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final eventToString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/utils/EventLogger$StringEvent;->mDescription:Ljava/lang/String;

    return-object p0
.end method
