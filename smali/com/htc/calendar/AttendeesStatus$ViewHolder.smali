.class Lcom/htc/calendar/AttendeesStatus$ViewHolder;
.super Ljava/lang/Object;
.source "AttendeesStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AttendeesStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field badge:Lcom/htc/widget/QuickContactBadge;

.field presence:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/calendar/AttendeesStatus$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/htc/calendar/AttendeesStatus$ViewHolder;-><init>()V

    return-void
.end method
