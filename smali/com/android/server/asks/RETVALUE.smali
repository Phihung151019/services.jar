.class public final Lcom/android/server/asks/RETVALUE;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public SA:I

.field public eventNameForSA:Ljava/lang/String;

.field public isExecute:I

.field public morerules:Lcom/android/server/asks/MORERULES;

.field public policy:I

.field public status:I

.field public tagName:Ljava/lang/String;


# virtual methods
.method public final set(IIIILjava/lang/String;Ljava/lang/String;Lcom/android/server/asks/MORERULES;)V
    .locals 0

    iput p1, p0, Lcom/android/server/asks/RETVALUE;->status:I

    iput p2, p0, Lcom/android/server/asks/RETVALUE;->policy:I

    iput p3, p0, Lcom/android/server/asks/RETVALUE;->SA:I

    iput p4, p0, Lcom/android/server/asks/RETVALUE;->isExecute:I

    iput-object p5, p0, Lcom/android/server/asks/RETVALUE;->tagName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/asks/RETVALUE;->eventNameForSA:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/asks/RETVALUE;->morerules:Lcom/android/server/asks/MORERULES;

    return-void
.end method
