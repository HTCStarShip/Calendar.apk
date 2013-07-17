.class Lcom/htc/calendar/MultiCalendarsByAccountAdapter$ViewHolder;
.super Lcom/htc/widget/SimpleHtcListItemSeparable;
.source "MultiCalendarsByAccountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/MultiCalendarsByAccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field labelView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "label"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;Z)V

    .line 39
    return-void
.end method
