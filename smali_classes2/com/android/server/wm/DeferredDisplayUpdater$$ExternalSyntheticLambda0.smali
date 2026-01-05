.class public final synthetic Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;


# virtual methods
.method public final setFields(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)V
    .locals 0

    iget-object p0, p2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object p0, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object p0, p2, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    iput-object p0, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    iget-boolean p0, p2, Landroid/view/DisplayInfo;->canHostTasks:Z

    iput-boolean p0, p1, Landroid/view/DisplayInfo;->canHostTasks:Z

    iget p0, p2, Landroid/view/DisplayInfo;->appWidth:I

    iput p0, p1, Landroid/view/DisplayInfo;->appWidth:I

    iget p0, p2, Landroid/view/DisplayInfo;->appHeight:I

    iput p0, p1, Landroid/view/DisplayInfo;->appHeight:I

    iget p0, p2, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput p0, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget p0, p2, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput p0, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iget p0, p2, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput p0, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget p0, p2, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput p0, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget p0, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    iput p0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p0, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    iput p0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget p0, p2, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput p0, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget p0, p2, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput p0, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget p0, p2, Landroid/view/DisplayInfo;->rotation:I

    iput p0, p1, Landroid/view/DisplayInfo;->rotation:I

    iget-object p0, p2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object p0, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget p0, p2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput p0, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget-object p0, p2, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object p0, p1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iget-object p0, p2, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    iput-object p0, p1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    return-void
.end method
