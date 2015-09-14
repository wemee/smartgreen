class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]

  # GET /schools
  # GET /schools.json
  def index
    @schools = School.all
  end

  # GET /schools/1
  # GET /schools/1.json
  def show
    labels = []
    now = Time.now #.strftime('%H:%M')
    degree = 20
    degree.times {|t|
      labels << (now - (degree-t).minutes).strftime('%H:%M')
    }

    case @school.id
    when 5 #河堤國小
      @plugs = []
      
      3.times {|i|
        data = []
        degree.times {|i|
          data << (30+rand(10))
        }
        @plugs << {device:"燈光#{i+1}", labels:labels, data:data}
      }

      3.times {|i|
        data = []
        degree.times {|i|
          data << (20+rand(10))
        }
        @plugs << {device:"風扇#{i+1}", labels:labels, data:data}
      }

      2.times {|i|
        data = []
        degree.times {|i|
          data << (10+rand(10))
        }
        @plugs << {device:"平板充電車#{i+1}", labels:labels, data:data}
      }

      # data = []
      # degree.times {|i|
      #   data << (30+rand(10))
      # }
      # @plugs << {device:"燈光1", labels:labels, data:data}

      # data = []
      # degree.times {|i|
      #   data << (30+rand(10))
      # }
      # @plugs << {device:"燈光2", labels:labels, data:data}


      # data = []
      # degree.times {|i|
      #   data << (20+rand(10))
      # }
      # @plugs << {device:"風扇1", labels:labels, data:data}
      # data = []
      # degree.times {|i|
      #   data << (20+rand(10))
      # }
      # @plugs << {device:"風扇2", labels:labels, data:data}

      # data = []
      # degree.times {|i|
      #   data << (10+rand(10))
      # }
      # @plugs << {device:"平板充電車1", labels:labels, data:data}
      # data = []
      # degree.times {|i|
      #   data << (10+rand(10))
      # }
      # @plugs << {device:"平板充電車2", labels:labels, data:data}


      # data = []
      # degree.times {|i|
      #   data << (30+rand(10))
      # }
      # @plugs << {device:"燈光3", labels:labels, data:data}
      # data = []
      # degree.times {|i|
      #   data << (20+rand(10))
      # }
      # @plugs << {device:"風扇/冷氣", labels:labels, data:data}

    when 4 #和平高中
      @plugs = []
      10.times {|i|
        data = []
        degree.times {|i|
          data << (30+rand(10))
        }
        @plugs << {device:"燈光#{i+1}", labels:labels, data:data}
      }
    when 3 #名間國中
      @plugs = []

      8.times {|i|
        data = []
        degree.times {|i|
          data << (30+rand(10))
        }
        @plugs << {device:"燈光#{i+1}", labels:labels, data:data}
      }

      8.times {|i|
        data = []
        degree.times {|i|
          data << (20+rand(10))
        }
        @plugs << {device:"風扇#{i+1}", labels:labels, data:data}
      }

      7.times {|i|
        data = []
        degree.times {|i|
          data << (10+rand(10))
        }
        @plugs << {device:"平板充電車#{i+1}", labels:labels, data:data}
      }
    end
  end

  # GET /schools/new
  def new
    @school = School.new
  end

  # GET /schools/1/edit
  def edit
  end

  # POST /schools
  # POST /schools.json
  def create
    @school = School.new(school_params)

    respond_to do |format|
      if @school.save
        format.html { redirect_to @school, notice: 'School was successfully created.' }
        format.json { render :show, status: :created, location: @school }
      else
        format.html { render :new }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schools/1
  # PATCH/PUT /schools/1.json
  def update
    respond_to do |format|
      if @school.update(school_params)
        format.html { redirect_to @school, notice: 'School was successfully updated.' }
        format.json { render :show, status: :ok, location: @school }
      else
        format.html { render :edit }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schools/1
  # DELETE /schools/1.json
  def destroy
    @school.destroy
    respond_to do |format|
      format.html { redirect_to schools_url, notice: 'School was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school
      @school = School.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_params
      params.require(:school).permit(:name, :address)
    end
end
