.class public final synthetic Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/content/ComponentName;

    new-instance p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    invoke-direct {p0}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>()V

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/content/ComponentName;

    new-instance p0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    invoke-direct {p0}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
