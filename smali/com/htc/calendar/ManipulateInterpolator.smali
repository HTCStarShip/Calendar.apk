.class public Lcom/htc/calendar/ManipulateInterpolator;
.super Ljava/lang/Object;
.source "ManipulateInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/ManipulateInterpolator$InterpolatorListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ManipulateInterpolator"


# instance fields
.field mChanged:Z

.field private mCurrentInterpolator:F

.field private mFinish:Z

.field private mInterpolatorEnd:Z

.field private mInterpolatorListener:Lcom/htc/calendar/ManipulateInterpolator$InterpolatorListener;

.field private mMax:F

.field private mOffset:F

.field private mTimeInterpolator:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mFinish:Z

    .line 9
    iput-boolean v1, p0, Lcom/htc/calendar/ManipulateInterpolator;->mInterpolatorEnd:Z

    .line 10
    const/high16 v0, 0x4396

    iput v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mMax:F

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mOffset:F

    .line 12
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mCurrentInterpolator:F

    .line 37
    iput-boolean v1, p0, Lcom/htc/calendar/ManipulateInterpolator;->mChanged:Z

    .line 50
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mTimeInterpolator:F

    .line 17
    return-void
.end method

.method public constructor <init>(F)V
    .locals 3
    .parameter "maxInterpolation"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mFinish:Z

    .line 9
    iput-boolean v2, p0, Lcom/htc/calendar/ManipulateInterpolator;->mInterpolatorEnd:Z

    .line 10
    const/high16 v0, 0x4396

    iput v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mMax:F

    .line 11
    iput v1, p0, Lcom/htc/calendar/ManipulateInterpolator;->mOffset:F

    .line 12
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mCurrentInterpolator:F

    .line 37
    iput-boolean v2, p0, Lcom/htc/calendar/ManipulateInterpolator;->mChanged:Z

    .line 50
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mTimeInterpolator:F

    .line 20
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The max interpolation should be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iput p1, p0, Lcom/htc/calendar/ManipulateInterpolator;->mMax:F

    .line 24
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mFinish:Z

    .line 100
    return-void
.end method

.method public getCurrentInterpolation()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mOffset:F

    return v0
.end method

.method public getInterpolation(F)F
    .locals 3
    .parameter "f"

    .prologue
    const/high16 v2, 0x3f80

    .line 54
    iget-boolean v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mFinish:Z

    if-eqz v0, :cond_2

    .line 55
    iget v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mTimeInterpolator:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 56
    iget v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mCurrentInterpolator:F

    .line 87
    :goto_0
    return v0

    .line 60
    :cond_0
    iput p1, p0, Lcom/htc/calendar/ManipulateInterpolator;->mTimeInterpolator:F

    .line 62
    iget v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mCurrentInterpolator:F

    add-float/2addr v0, v2

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mCurrentInterpolator:F

    .line 64
    iget-boolean v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mInterpolatorEnd:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mCurrentInterpolator:F

    const v1, 0x3f7d70a4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 65
    iput v2, p0, Lcom/htc/calendar/ManipulateInterpolator;->mCurrentInterpolator:F

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mInterpolatorEnd:Z

    .line 70
    iget-object v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mInterpolatorListener:Lcom/htc/calendar/ManipulateInterpolator$InterpolatorListener;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mInterpolatorListener:Lcom/htc/calendar/ManipulateInterpolator$InterpolatorListener;

    invoke-interface {v0}, Lcom/htc/calendar/ManipulateInterpolator$InterpolatorListener;->onInterpolatorEnd()V

    .line 87
    :cond_1
    :goto_1
    iget v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mCurrentInterpolator:F

    goto :goto_0

    .line 77
    :cond_2
    iget-boolean v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mChanged:Z

    if-eqz v0, :cond_1

    .line 78
    iget v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mOffset:F

    iget v1, p0, Lcom/htc/calendar/ManipulateInterpolator;->mMax:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mCurrentInterpolator:F

    .line 80
    iget v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mCurrentInterpolator:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 81
    iput v2, p0, Lcom/htc/calendar/ManipulateInterpolator;->mCurrentInterpolator:F

    .line 83
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mChanged:Z

    goto :goto_1
.end method

.method public getMaxInterpolation()F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mMax:F

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mOffset:F

    .line 92
    iput v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mCurrentInterpolator:F

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/ManipulateInterpolator;->mChanged:Z

    .line 94
    iput-boolean v1, p0, Lcom/htc/calendar/ManipulateInterpolator;->mFinish:Z

    .line 95
    iput-boolean v1, p0, Lcom/htc/calendar/ManipulateInterpolator;->mInterpolatorEnd:Z

    .line 96
    return-void
.end method

.method public setCurrentInterpolation(F)V
    .locals 2
    .parameter "offsetPixels"

    .prologue
    const/4 v0, 0x0

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/calendar/ManipulateInterpolator;->mChanged:Z

    .line 43
    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .end local p1
    :cond_0
    iput p1, p0, Lcom/htc/calendar/ManipulateInterpolator;->mOffset:F

    .line 44
    return-void
.end method

.method public setMaxInterpolation(F)V
    .locals 2
    .parameter "max"

    .prologue
    .line 27
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The max interpolation should be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput p1, p0, Lcom/htc/calendar/ManipulateInterpolator;->mMax:F

    .line 31
    return-void
.end method

.method public setOnInterpolatorListener(Lcom/htc/calendar/ManipulateInterpolator$InterpolatorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/calendar/ManipulateInterpolator;->mInterpolatorListener:Lcom/htc/calendar/ManipulateInterpolator$InterpolatorListener;

    .line 104
    return-void
.end method
