module ApplicationHelper
	#helper_method :set_datetime1
	#helper_method :set_datetime2
	#helper_method :set_digito

	def time_format(datetime)
  		datetime.strftime('%H:%M') unless datetime.blank?
	end
	def set_datetime1(datetime)
		$dt1=datetime
	end
	def set_datetime2(datetime2)
		$dt2=datetime2
	end
	def set_digito(digito)
		$dig=digito
	end
	def comprobar_dia()
		if $dt2.monday? and  ($dig.to_i==1 or $dig.to_i ==2)
			$band=0
			comp_hora()
			if $band==1
				return "Su numero de placa no puede ciruclar entre las 07:00 A 09:30 los Lunes"
			elsif $band==2
				return "Su numero de placa no puede ciruclar entre las 16:00 A 19:30 los Lunes"
			else
				return "Su numero de placa  puede ciruclar con normalidad"
			end
		elsif $dt2.tuesday? and  ($dig.to_i==3 or $dig.to_i ==4)
			$band=0
			comp_hora()
			if $band==1
				return "Su numero de placa no puede ciruclar entre las 07:00 A 09:30 los Martes"
			elsif $band==2
				return "Su numero de placa no puede ciruclar entre las 16:00 A 19:30 los Martes"
			else
				return "Su numero de placa  puede ciruclar con normalidad"
			end
		elsif $dt2.wednesday? and  ($dig.to_i==5 or $dig.to_i ==6)
			$band=0
			comp_hora()
			if $band==1
				return "Su numero de placa no puede ciruclar entre las 07:00 A 09:30 los Miercoles"
			elsif $band==2
				return "Su numero de placa no puede ciruclar entre las 16:00 A 19:30 los Miercoles"
			else
				return "Su numero de placa  puede ciruclar con normalidad"
			end
		elsif $dt2.thursday? and  ($dig.to_i==7 or $dig.to_i ==8)
			$band=0
			comp_hora()
			if $band==1
				return "Su numero de placa no puede ciruclar entre las 07:00 A 09:30 los Jueves"
			elsif $band==2
				return "Su numero de placa no puede ciruclar entre las 16:00 A 19:30 los Jueves"
			else
				return "Su numero de placa  puede ciruclar con normalidad"
			end
		elsif $dt2.friday? and  ($dig.to_i==9 or $dig.to_i ==0)
			$band=0
			comp_hora()
			if $band==1
				return "Su numero de placa no puede ciruclar entre las 07:00 A 09:30 los Viernes"
			elsif $band==2
				return "Su numero de placa no puede ciruclar entre las 16:00 A 19:30 los Viernes"
			else
				return "Su numero de placa  puede ciruclar con normalidad"
			end				
		else
			return "Su numero de placa  puede ciruclar con normalidad"
		end
	end
	def comp_hora()
		a=$dt1.year.to_i
		m=$dt1.month.to_i
		d=$dt1.day.to_i
		h=$dt1.hour.to_i
		m1=$dt1.min.to_i
		s=$dt1.sec.to_i
		t=Time.new(a,m,d,h,m1,s,"-05:00")
		t1=Time.local(2000,01,01,7,00,00)
		t2=Time.local(2000,01,01,9,30,00)
		t3=Time.local(2000,01,01,16,00,00)
		t4=Time.local(2000,01,01,19,30,00)
		if t.between?(t1,t2)
			$band=1
		elsif t.between?(t3,t4)
			$band=2
		else
			$band=0
		end
	end
end
