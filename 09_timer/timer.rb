#!/usr/bin/env ruby

class Timer
    attr_accessor :seconds

    def initialize
        @seconds = 0
    end

    def padded(input_int)
        output_str = input_int.to_s
        if output_str.length == 1
            output_str = '0' + output_str
        end
        return output_str
    end

    def time_string()
        hours_int, mins_int, secs_int = 0,0,@seconds
        if @seconds >= 3600
            hours_int = @seconds / 3600
            mins_int = (@seconds - hours_int * 3600) / 60
            secs_int = (@seconds - (hours_int * 3600 + mins_int * 60))
        elsif @seconds >= 60
            mins_int = @seconds / 60
            secs_int = @seconds - 60
        end
        return padded(hours_int) + ':' + padded(mins_int) + ':' + padded(secs_int)
    end
end
